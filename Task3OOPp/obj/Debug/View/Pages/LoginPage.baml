   M S B A M L   `   `   `  ????D  @Task3OOPp, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null;"clr-namespace:Task3OOPp.View.PagesTask3OOPp.View.Pages  5      $    Task3OOPp.View.Pages.LoginPage   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      c _MaterialDesignThemes.MahApps, Version=0.2.5.0, Culture=neutral, PublicKeyToken=df2a72020bd7962a_ [MaterialDesignThemes.Wpf, Version=4.6.1.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aHmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes   5      0local"clr-namespace:Task3OOPp.View.Pages   5        N? 
FontFamily$  Comic Sans MS)?5      .??5      ?  ? ColumnDefinitions 5   
   ?? 5      $??* ?6   ?? 5      $??* ?6   .+?5   
   ?? $????Практическая работа №3. Разработка системы авторизвции с использованием EF и SQLServer??6   $??Center=?5      $
??Wrap=?5      
???????$??SemiBold"?5      $??25(?5      $??5q?5      ?? 5   
   
???????$??Center=?5      $??Center=?5      $	??300??5      $	??200??5       ?? CornerRadius$ 25??5       #  MaterialDesignElevationShadow16 J? Effect# [  5       ._?5"      ? .+?5#      ?? $??Center=?6   $??Center=?5$      .+?5%      ??  ?? Orientation$ 
Horizontal=?6!   .+?5&      '  !MaterialDesignThemes.Wpf.PackIcon     Kind$ Person=?62   $??0 15 3 0q?5'   2   ???#6600cc5(   2   ?? 5)      -   5         ??Name$ TbLogin??5*   $   $	??120??5)   "   ???#6600cc.  (MaterialDesignThemes.Wpf.TextFieldAssist   HasClearButton . )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ 
Логин??5-   $   	   
Foreground	 ?#6600cc % !MaterialDesignFloatingHintTextBox#??[ 5/   $   
   UnderlineBrush
 ?#6600cc50   $   52      ?? 54      $ 
Horizontal=?6!   $??0 5 0 0q?55   %   .+?56        $	 Key=?62   $??0 15 3 0q?57   2   ???#6600cc58   2   G? 59      -   5         G?Name$ 
PbPassword??5:   $   $	??120??59   &   ???#6600cc . $ Пароль??5=   $   	 ?#6600cc ) %MaterialDesignFloatingHintPasswordBox#??[ 5?   $   
 ?#6600cc5@   $   5A      ?? 5B      -   5         ??Name$ BtnLogin??5F   !   $??0 20 0 0q?5B      
?????? ???#6600cc???#6600cc  MaterialDesignRaisedButton#??[ 5H   !   3  -MaterialDesignThemes.Wpf.ButtonProgressAssist   IndicatorForeground ?#6600cc   IndicatorBackground
 ????    Value$ -1Q?5K   !      IsIndicatorVisible .    IsIndeterminate . .??5N      ?? $ 
Horizontal=?6%   .+?5O        $ LoginVariant=?66   $??0 2 3 0q?5P   6   ?? 5Q      $??
Войти??6(   5R      5S      5T      5U      5V      ?? 5W   
   $??Center=?6   $??Bottom=?5X      $??	0 0 0 100q?5Y      .+?5Z      ?? $??Или??6   $??15(?5[      
??????? ?? TextAlignment$ Center=?5]      ?? 5^      -   5        $ BtnRegistration??5a      
?????? 
???????
?????? .??5c      ?? $ 
Horizontal=?6   .+?5d        $ Register=?6.   $??0 2 3 0q?5e   .   ?? 5f      $)??#Пройти регистрацию??6    $??	Underline{?5g       5h      5i      5j      ?? 5k   
   $??/Images/5.png??6   $??1??5l      $??UniformToFill=?5m      5n      5o      