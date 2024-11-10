local player = game.Players.LocalPlayer
game.ReplicatedStorage.Events.AutosaveEvent.OnClientEvent:Connect(function()
	local accessguitable = {script.Parent:WaitForChild("ShopGui").TrailsShopFrame.ScrollingFrame.Template.BuyButton.RedTrail.Text,
		script.Parent:WaitForChild("ShopGui").TrailsShopFrame.ScrollingFrame.Template1.BuyButton.OrangeTrail.Text,
		script.Parent:WaitForChild("ShopGui").TrailsShopFrame.ScrollingFrame.Template2.BuyButton.YellowTrail.Text,
		script.Parent:WaitForChild("ShopGui").TrailsShopFrame.ScrollingFrame.Template3.BuyButton.GreenTrail.Text,
		script.Parent:WaitForChild("ShopGui").TrailsShopFrame.ScrollingFrame.Template4.BuyButton.BlueTrail.Text,
		script.Parent:WaitForChild("ShopGui").TrailsShopFrame.ScrollingFrame.Template5.BuyButton.PurpleTrail.Text,
		script.Parent:WaitForChild("ShopGui").TrailsShopFrame.ScrollingFrame.Template6.BuyButton.AquaTrail.Text,
		script.Parent:WaitForChild("ShopGui").TrailsShopFrame.ScrollingFrame.Template7.BuyButton.PinkTrail.Text,
		script.Parent:WaitForChild("ShopGui").TrailsShopFrame.ScrollingFrame.Template8.BuyButton.WhiteTrail.Text,
		script.Parent:WaitForChild("ShopGui").TrailsShopFrame.ScrollingFrame.Template9.BuyButton.RainbowTrail.Text,
		script.Parent:WaitForChild("ShopGui").TrailsShopFrame.ScrollingFrame.Template10.BuyButton.FireTrail.Text,
		script.Parent:WaitForChild("ShopGui").TrailsShopFrame.ScrollingFrame.Template11.BuyButton.OceanTrail.Text,
		script.Parent:WaitForChild("ShopGui").HalosShopFrame.ScrollingFrame.Template.BuyButton.RedHalo.Text,
		script.Parent:WaitForChild("ShopGui").HalosShopFrame.ScrollingFrame.Template1.BuyButton.OrangeHalo.Text,
		script.Parent:WaitForChild("ShopGui").HalosShopFrame.ScrollingFrame.Template2.BuyButton.YellowHalo.Text,
		script.Parent:WaitForChild("ShopGui").HalosShopFrame.ScrollingFrame.Template3.BuyButton.GreenHalo.Text,
		script.Parent:WaitForChild("ShopGui").HalosShopFrame.ScrollingFrame.Template4.BuyButton.BlueHalo.Text,
		script.Parent:WaitForChild("ShopGui").HalosShopFrame.ScrollingFrame.Template5.BuyButton.PurpleHalo.Text,
		script.Parent:WaitForChild("ShopGui").HalosShopFrame.ScrollingFrame.Template6.BuyButton.AquaHalo.Text,
		script.Parent:WaitForChild("ShopGui").HalosShopFrame.ScrollingFrame.Template7.BuyButton.PinkHalo.Text,
		script.Parent:WaitForChild("ShopGui").HalosShopFrame.ScrollingFrame.Template8.BuyButton.WhiteHalo.Text,
		script.Parent:WaitForChild("ShopGui").NametagsShopFrame.ScrollingFrame.Template1.BuyButton.RedNametag.Text,
		script.Parent:WaitForChild("ShopGui").NametagsShopFrame.ScrollingFrame.Template2.BuyButton.OrangeNametag.Text,
		script.Parent:WaitForChild("ShopGui").NametagsShopFrame.ScrollingFrame.Template3.BuyButton.YellowNametag.Text,
		script.Parent:WaitForChild("ShopGui").NametagsShopFrame.ScrollingFrame.Template4.BuyButton.GreenNametag.Text,
		script.Parent:WaitForChild("ShopGui").NametagsShopFrame.ScrollingFrame.Template5.BuyButton.BlueNametag.Text,
		script.Parent:WaitForChild("ShopGui").NametagsShopFrame.ScrollingFrame.Template6.BuyButton.PurpleNametag.Text,
		script.Parent:WaitForChild("ShopGui").NametagsShopFrame.ScrollingFrame.Template7.BuyButton.AquaNametag.Text,
		script.Parent:WaitForChild("ShopGui").NametagsShopFrame.ScrollingFrame.Template8.BuyButton.PinkNametag.Text,
		script.Parent:WaitForChild("ShopGui").NametagsShopFrame.ScrollingFrame.Template9.BuyButton.MagentaNametag.Text}
	print(accessguitable)
	game.ReplicatedStorage.Events.AutosaveEventFireback:FireServer(accessguitable)
end)

