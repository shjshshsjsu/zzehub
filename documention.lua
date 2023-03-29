Read here for better formatting

https://github.com/shlexware/Rayfield/blob/main/Documentation.md

Rayfield Interface Suite

This is the written documentation for Rayfield Interface Suite

Last updated for the Beta 5 release

Booting the Library

local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()

Secure Mode

If the game you're trying to run Rayfield Interface Suite on, is detecting or crashing when you use Rayfield Interface Suite, try using Secure Mode:

Place getgenv().SecureMode = true above the initial Rayfield loadstring

Rayfield will now use Secure Mode and attempt to reduce detection

Note: This may cause some elements of the UI to look lower quality or may increase loading times slightly

Enabling Configuration Saving

Enable ConfigurationSaving in the CreateWindow function

Choose an appropiate FileName in the CreateWindow function

Choose an unique flag identifier for each supported element you create

Place Rayfield:LoadConfiguration() at the bottom of all your code

Rayfield will now automatically save and load your configuration

Creating a Window

local Window = Rayfield:CreateWindow({

	Name = "Rayfield Example Window",	LoadingTitle = "Rayfield Interface Suite",

	LoadingSubtitle = "by Sirius",

	ConfigurationSaving = {

		Enabled = true,

		FolderName = "Rayfield Interface Suite",

		FileName = "Big Hub"

	},

	KeySystem = false, -- Set this to true to use our key system

	KeySettings = {

		Title = "Sirius Hub",

		Subtitle = "Key System",

		Note = "Join the discord (discord.gg/sirius)",

		SaveKey = true,

		Key = "ABCDEF"

	}

})

Creating a Tab

local Tab = Window:CreateTab("Tab Example", 4483362458) -- Title, Image

Creating a Section

local Section = Tab:CreateSection("Section Example")

Updating a Section

Section:Set("Section Example")

Notifying the user

Rayfield:Notify("Title Example", "Content/Description Example", 4483362458) -- Title, Content, Image

Creating a Button

local Button = Tab:CreateButton({

	Name = "Button Example",

	Callback = function()

		-- The function that takes place when the button is pressed

	end,

})

Updating a Button

Button:Set("Button Example")

Creating a Toggle

local Toggle = Tab:CreateToggle({

	Name = "Toggle Example",

	CurrentValue = false,

	Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps

	Callback = function(Value)

		-- The function that takes place when the toggle is pressed

    		-- The variable (Value) is a boolean on whether the toggle is true or false

	end,

})

Updating a Toggle

Toggle:Set(false)

Creating a Color Picker

Not in Beta 5

Creating a Slider

local Slider = Tab:CreateSlider({

	Name = "Slider Example",

	Range = {0, 100},

	Increment = 10,

	Suffix = "Bananas",

	CurrentValue = 10,

	Flag = "Slider1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps

	Callback = function(Value)

		-- The function that takes place when the slider changes

    		-- The variable (Value) is a number which correlates to the value the slider is currently at

	end,

})

Updating a Slider

Slider:Set(10) -- The new slider integer value

Creating a Label

local Label = Tab:CreateLabel("Label Example")

Updating a Label

Label:Set("Label Example")

Creating a Paragraph

local Paragraph = Tab:CreateParagraph({Title = "Paragraph Example", Content = "Paragraph Example"})

Updating a Paragraph

Paragprah:Set({Title = "Paragraph Example", Content = "Paragraph Example"})

Creating an Adaptive Input (TextBox)

local Input = Tab:CreateInput({

	Name = "Input Example",

	PlaceholderText = "Input Placeholder",

	RemoveTextAfterFocusLost = false,

	Callback = function(Text)

		-- The function that takes place when the input is changed

    		-- The variable (Text) is a string for the value in the text box

	end,

})

Creating a Keybind

local Keybind = Tab:CreateKeybind({

	Name = "Keybind Example",

	CurrentKeybind = "Q",

	HoldToInteract = false,

	Flag = "Keybind1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps

	Callback = function(Keybind)

		-- The function that takes place when the keybind is pressed

    		-- The variable (Keybind) is a boolean for whether the keybind is being held or not (HoldToInteract needs to be true)

	end,

})

Updating a Keybind

Keybind:Set("RightCtrl") -- Keybind (string)

Creating a Dropdown menu

local Dropdown = Tab:CreateDropdown({

	Name = "Dropdown Example",

	Options = {"Option 1","Option 2"},

	CurrentOption = "Option 1",

	Flag = "Dropdown1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps

	Callback = function(Option)

	  	  -- The function that takes place when the selected option is changed

    	  -- The variable (Option) is a string for the value that the dropdown was changed to

	end,

})

Updating a Dropdown

Dropdown:Set("Option 2") -- The new option value

Check the value of an existing element

To check the current value of an existing element, using the variable, you can do ElementName.CurrentValue, if it's a keybind or dropdown, you will need to use KeybindName.CurrentKeybind or DropdownName.CurrentOption

Destroying the Interface

Rayfield:Destroy()
