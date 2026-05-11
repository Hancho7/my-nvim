return {
	"mfussenegger/nvim-jdtls",
	ft = "java",
	config = function()
		local jdtls = require("jdtls")
		local mason_path = vim.fn.expand("~/.local/share/nvim/mason/packages/jdtls")

		vim.api.nvim_create_autocmd("FileType", {
			pattern = "java",
			callback = function()
				local project_name = vim.fn.fnamemodify(vim.fn.getcwd(), ":p:h:t")
				local workspace = vim.fn.expand("~/.cache/jdtls/workspace/") .. project_name

				local config = {
					cmd = {
						"java",
						"-Declipse.application=org.eclipse.jdt.ls.core.id1",
						"-Dosgi.bundles.defaultStartLevel=4",
						"-Declipse.product=org.eclipse.jdt.ls.core.product",
						"-Dlog.level=ALL",
						"-Xmx4g",
						"--add-modules=ALL-SYSTEM",
						"--add-opens",
						"java.base/java.util=ALL-UNNAMED",
						"--add-opens",
						"java.base/java.lang=ALL-UNNAMED",
						"-jar",
						vim.fn.glob(mason_path .. "/plugins/org.eclipse.equinox.launcher_*.jar"),
						"-configuration",
						mason_path .. "/config_mac",
						"-data",
						workspace,
					},
					root_dir = require("jdtls.setup").find_root({ "pom.xml", "build.gradle", "mvnw", ".git" }),
					settings = {
						java = {
							configuration = {
								runtimes = {
									{
										name = "JavaSE-21",
										path = vim.fn.expand("~/.sdkman/candidates/java/current"),
										default = true,
									},
								},
							},
							eclipse = { downloadSources = true },
							maven = { downloadSources = true },
							format = { enabled = false },
						},
					},
					init_options = {
						bundles = {},
					},
				}

				jdtls.start_or_attach(config)
			end,
		})
	end,
}
