#Module to create a route to reports and to save screenshot
module Helper
    def screenshot(fileName, result)
        fileRoute = "results/screenshots/test#{result}"
        screenshot = "#{fileRoute}/#{fileName}.png"
        page.save_screenshot(screenshot)
        embed(screenshot, 'image/png', 'Click here')
    end
end