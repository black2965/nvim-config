vim.cmd([[
hi DapBreakpointTextHl guifg=#AA0000
hi DapStoppedTextHl guifg=#00c853
]])

local dap = require('dap')

-- アイコン設定
vim.fn.sign_define('DapBreakpoint', { text = '', texthl = 'DapBreakpointTextHl' })
vim.fn.sign_define('DapStopped', { text = '', texthl = 'DapStoppedTextHl' })

-- ここにデバッガの設定
dap.adapters = {
    codelldb = {
        type = 'server',
        port = '${port}',
        executable = {

            -- Masonはここにデバッガを入れてくれる
            command = vim.fn.stdpath('data') .. '/mason/packages/codelldb/extension/adapter/codelldb',

            -- ポートを自動的に割り振ってくれる
            args = { '--port', '${port}' }
        }
    }
}

-- ここにファイルタイプ別の設定
dap.configurations = {
    cpp = {
        -- 複数指定することもできる
        -- 複数あるとデバッグ開始時にどの設定使うか聞かれる
        {
            -- なくてもいい。複数の設定があるとき、それらを識別するための名前
            name = 'Launch file',

            -- dap.adapters にあるデバッガから、どれを使うか
            type = 'codelldb',

            -- デバッガ起動する
            request = 'launch',

            -- コンパイル時に -g オプションをつけてビルドした実行ファイルを指定する
            -- こんな感じでinputで指定できるようにしておく
            program = function()
                return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/a.out', 'file')
            end,

            -- よく分からないけど、nvim-dapのWikiに書いてあったので
            cwd = '${workspaceFolder}',

            -- trueだとバイナリのデバッグになっちゃう(なんで?)
            stopOnEntry = false
        }
    }
}
