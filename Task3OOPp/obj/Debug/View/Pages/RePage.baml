   M S B A M L   `   `   `  ????D  @Task3OOPp, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null;"clr-namespace:Task3OOPp.View.PagesTask3OOPp.View.Pages  5      !    Task3OOPp.View.Pages.RePage   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      c _MaterialDesignThemes.MahApps, Version=0.2.5.0, Culture=neutral, PublicKeyToken=df2a72020bd7962a_ [MaterialDesignThemes.Wpf, Version=4.6.1.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aHmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes   5      0local"clr-namespace:Task3OOPp.View.Pages   5        N? 
FontFamily$  Comic Sans MS)?5      .??5      ?  ? ColumnDefinitions 5   
   ?? 5      $??* ?6   ?? 5      $??* ?6   .+?5   
   ?? $??/Images/5.png??6   $??0??5      $??UniformToFill=?5      ?? 5   
   $????Практическая работа №3. Разработка системы авторизвции с использованием EF и SQLServer??6   $??Center=?5      $
??Wrap=?5      
???????$??SemiBold"?5      $??25(?5      $??1??5      $??5q?5      ?? 5   
   
???????$??Center=?5      $??Center=?5      $	??300??5       $	??200??5!      $??1??5"       ?? CornerRadius$ 25??5#       #  MaterialDesignElevationShadow16 J? Effect# [  5$      ._?5%      ? .+?5&      ?? $??Center=?6   $??Center=?5'      .+?5(      ??  ?? Orientation$ 
Horizontal=?6!   .+?5)      '  !MaterialDesignThemes.Wpf.PackIcon     Kind$ 	PeopleAdd=?62   $??0 15 3 0q?5*   2   ???#6600cc5+   2   ?? 5,      -   5         ??Name$ TbLogin??5-   $   $	??199??5,   "   ???#6600cc.  (MaterialDesignThemes.Wpf.TextFieldAssist   HasClearButton . )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Введите логин??50   $   	   
Foreground	 ?#6600cc % !MaterialDesignFloatingHintTextBox#??[ 52   $   
   UnderlineBrush
 ?#6600cc53   $   55      ?? 56      $ 
Horizontal=?6!   $??0 5 0 0q?57   %   .+?58        $	 Key=?62   $??0 15 3 0q?59   2   ???#6600cc5:   2   G? 5;      -   5         G?Name$ 
PbPassword??5<   $   $	??199??5;   &   ???#6600cc . $! Введите пароль??5?   $   	 ?#6600cc ) %MaterialDesignFloatingHintPasswordBox#??[ 5A   $   
 ?#6600cc5B   $   5C      ?? 5D      $ 
Horizontal=?6!   $??0 5 0 0q?5E   !   .+?5F        $ ChairSchool=?62   $??0 5 3 0q?5G   2   ???#6600cc5H   2   ?? 5I      -   5         ??Name$ CbRole??5J   #   $	??199??5I   #    ?? DisplayMemberPath$ RoleID??5K   #   ???#6600cc
???????  MaterialDesignComboBox#??[ 5N   #   
 ?#6600cc$ Выбрать роль??5P   #   $??12(?5Q   #   5R      ?? 5S      -   5         ??Name$ BtnRegistration??5W   !   $??0 20 0 0q?5S      
?????? ???#6600cc???#6600cc  MaterialDesignRaisedButton#??[ 5Y   !   3  -MaterialDesignThemes.Wpf.ButtonProgressAssist   IndicatorForeground ?#6600cc   IndicatorBackground
 ????    Value$ -1Q?5\   !      IsIndicatorVisible .    IsIndeterminate . .??5_      ?? $ 
Horizontal=?6%   .+?5`        $ Check=?66   $??0 2 3 0q?5a   6   ?? 5b      $*??$Зарегистрироваться??6(   5c      5d      5e      5f      5g      ?? 5h   
   $??Center=?6   $??Bottom=?5i      $??	0 0 0 100q?5j      $??1??5k      .+?5l      ?? $??Или??6   $??15(?5m      
??????? ?? TextAlignment$ Center=?5o      ?? 5p      -   5        $ BtnLogin??5s      
?????? 
???????
?????? .??5u      ?? $ 
Horizontal=?6   .+?5v        $ Login=?6.   $??0 2 3 0q?5w   .   ?? 5x      $"??Войти в систему??6    $??	Underline{?5y       5z      5{      5|      5      5?      