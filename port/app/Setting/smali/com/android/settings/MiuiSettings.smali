.class public Lcom/android/settings/MiuiSettings;
.super Landroid/preference/PreferenceActivity;
.source "MiuiSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/MiuiSettings$1;,
        Lcom/android/settings/MiuiSettings$HeaderAdapter;,
        Lcom/android/settings/MiuiSettings$BackupPageChangeListener;,
        Lcom/android/settings/MiuiSettings$SettingsTabListener;,
        Lcom/android/settings/MiuiSettings$TabPagerAdapter;,
        Lcom/android/settings/MiuiSettings$TabState;
    }
.end annotation


# instance fields
.field private mActionBar:Landroid/app/ActionBar;

.field private mCurrentTab:Lcom/android/settings/MiuiSettings$TabState;

.field private mFrequentlyFragment:Lcom/android/settings/FrequentlyFragment;

.field private mSettingsFragment:Lcom/android/settings/SettingsFragment;

.field private mSettingsTabListener:Lcom/android/settings/MiuiSettings$SettingsTabListener;

.field private mTabPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 56
    sget-object v0, Lcom/android/settings/MiuiSettings$TabState;->COMMON:Lcom/android/settings/MiuiSettings$TabState;

    iput-object v0, p0, Lcom/android/settings/MiuiSettings;->mCurrentTab:Lcom/android/settings/MiuiSettings$TabState;

    .line 350
    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/MiuiSettings;)Lcom/android/settings/FrequentlyFragment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/settings/MiuiSettings;->mFrequentlyFragment:Lcom/android/settings/FrequentlyFragment;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/MiuiSettings;)Lcom/android/settings/SettingsFragment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/settings/MiuiSettings;->mSettingsFragment:Lcom/android/settings/SettingsFragment;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/MiuiSettings;I)Landroid/app/Fragment;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/android/settings/MiuiSettings;->getFragment(I)Landroid/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method private addTab(Lcom/android/settings/MiuiSettings$TabState;I)V
    .locals 2
    .parameter "tabState"
    .parameter "title"

    .prologue
    .line 100
    iget-object v1, p0, Lcom/android/settings/MiuiSettings;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v0

    .line 101
    .local v0, tab:Landroid/app/ActionBar$Tab;
    invoke-virtual {v0, p1}, Landroid/app/ActionBar$Tab;->setTag(Ljava/lang/Object;)Landroid/app/ActionBar$Tab;

    .line 102
    invoke-virtual {v0, p2}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;

    .line 103
    iget-object v1, p0, Lcom/android/settings/MiuiSettings;->mSettingsTabListener:Lcom/android/settings/MiuiSettings$SettingsTabListener;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    .line 104
    iget-object v1, p0, Lcom/android/settings/MiuiSettings;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 105
    return-void
.end method

.method private createActionBar()V
    .locals 3

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/android/settings/MiuiSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MiuiSettings;->mActionBar:Landroid/app/ActionBar;

    .line 89
    new-instance v0, Lcom/android/settings/MiuiSettings$SettingsTabListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/MiuiSettings$SettingsTabListener;-><init>(Lcom/android/settings/MiuiSettings;Lcom/android/settings/MiuiSettings$1;)V

    iput-object v0, p0, Lcom/android/settings/MiuiSettings;->mSettingsTabListener:Lcom/android/settings/MiuiSettings$SettingsTabListener;

    .line 91
    iget-object v0, p0, Lcom/android/settings/MiuiSettings;->mActionBar:Landroid/app/ActionBar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 92
    iget-object v0, p0, Lcom/android/settings/MiuiSettings;->mActionBar:Landroid/app/ActionBar;

    const/4 v1, 0x0

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 95
    sget-object v0, Lcom/android/settings/MiuiSettings$TabState;->COMMON:Lcom/android/settings/MiuiSettings$TabState;

    const v1, 0x7f0b0624

    invoke-direct {p0, v0, v1}, Lcom/android/settings/MiuiSettings;->addTab(Lcom/android/settings/MiuiSettings$TabState;I)V

    .line 96
    sget-object v0, Lcom/android/settings/MiuiSettings$TabState;->SETTINGS:Lcom/android/settings/MiuiSettings$TabState;

    const v1, 0x7f0b0623

    invoke-direct {p0, v0, v1}, Lcom/android/settings/MiuiSettings;->addTab(Lcom/android/settings/MiuiSettings$TabState;I)V

    .line 97
    return-void
.end method

.method private createFragments()V
    .locals 7

    .prologue
    const v6, 0x7f080129

    .line 108
    invoke-virtual {p0}, Lcom/android/settings/MiuiSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 110
    .local v1, fragmentManager:Landroid/app/FragmentManager;
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    .line 112
    .local v3, transaction:Landroid/app/FragmentTransaction;
    invoke-virtual {p0, v6}, Lcom/android/settings/MiuiSettings;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/support/v4/view/ViewPager;

    iput-object v4, p0, Lcom/android/settings/MiuiSettings;->mTabPager:Landroid/support/v4/view/ViewPager;

    .line 113
    new-instance v2, Lcom/android/settings/MiuiSettings$TabPagerAdapter;

    invoke-direct {v2, p0}, Lcom/android/settings/MiuiSettings$TabPagerAdapter;-><init>(Lcom/android/settings/MiuiSettings;)V

    .line 114
    .local v2, tabPagerAdapter:Lcom/android/settings/MiuiSettings$TabPagerAdapter;
    iget-object v4, p0, Lcom/android/settings/MiuiSettings;->mTabPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4, v2}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 115
    new-instance v0, Lcom/android/settings/MiuiSettings$BackupPageChangeListener;

    const/4 v4, 0x0

    invoke-direct {v0, p0, v4}, Lcom/android/settings/MiuiSettings$BackupPageChangeListener;-><init>(Lcom/android/settings/MiuiSettings;Lcom/android/settings/MiuiSettings$1;)V

    .line 116
    .local v0, backupPageChangeListener:Lcom/android/settings/MiuiSettings$BackupPageChangeListener;
    iget-object v4, p0, Lcom/android/settings/MiuiSettings;->mTabPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4, v0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 124
    const-string v4, "com.android.settings.FrequentlyFragment"

    invoke-virtual {v1, v4}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v4

    check-cast v4, Lcom/android/settings/FrequentlyFragment;

    iput-object v4, p0, Lcom/android/settings/MiuiSettings;->mFrequentlyFragment:Lcom/android/settings/FrequentlyFragment;

    .line 126
    const-string v4, "com.android.settings.SettingsFragment"

    invoke-virtual {v1, v4}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v4

    check-cast v4, Lcom/android/settings/SettingsFragment;

    iput-object v4, p0, Lcom/android/settings/MiuiSettings;->mSettingsFragment:Lcom/android/settings/SettingsFragment;

    .line 129
    iget-object v4, p0, Lcom/android/settings/MiuiSettings;->mFrequentlyFragment:Lcom/android/settings/FrequentlyFragment;

    if-nez v4, :cond_0

    .line 130
    new-instance v4, Lcom/android/settings/FrequentlyFragment;

    invoke-direct {v4}, Lcom/android/settings/FrequentlyFragment;-><init>()V

    iput-object v4, p0, Lcom/android/settings/MiuiSettings;->mFrequentlyFragment:Lcom/android/settings/FrequentlyFragment;

    .line 131
    iget-object v4, p0, Lcom/android/settings/MiuiSettings;->mFrequentlyFragment:Lcom/android/settings/FrequentlyFragment;

    const-string v5, "com.android.settings.FrequentlyFragment"

    invoke-virtual {v3, v6, v4, v5}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 134
    :cond_0
    iget-object v4, p0, Lcom/android/settings/MiuiSettings;->mSettingsFragment:Lcom/android/settings/SettingsFragment;

    if-nez v4, :cond_1

    .line 135
    new-instance v4, Lcom/android/settings/SettingsFragment;

    invoke-direct {v4}, Lcom/android/settings/SettingsFragment;-><init>()V

    iput-object v4, p0, Lcom/android/settings/MiuiSettings;->mSettingsFragment:Lcom/android/settings/SettingsFragment;

    .line 136
    iget-object v4, p0, Lcom/android/settings/MiuiSettings;->mSettingsFragment:Lcom/android/settings/SettingsFragment;

    const-string v5, "com.android.settings.SettingsFragment"

    invoke-virtual {v3, v6, v4, v5}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 140
    :cond_1
    iget-object v4, p0, Lcom/android/settings/MiuiSettings;->mFrequentlyFragment:Lcom/android/settings/FrequentlyFragment;

    invoke-virtual {v3, v4}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 141
    iget-object v4, p0, Lcom/android/settings/MiuiSettings;->mSettingsFragment:Lcom/android/settings/SettingsFragment;

    invoke-virtual {v3, v4}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 143
    invoke-virtual {v3}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 144
    invoke-virtual {v1}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 145
    return-void
.end method

.method private getFragment(I)Landroid/app/Fragment;
    .locals 3
    .parameter "position"

    .prologue
    .line 281
    sget-object v0, Lcom/android/settings/MiuiSettings$TabState;->COMMON:Lcom/android/settings/MiuiSettings$TabState;

    invoke-virtual {v0}, Lcom/android/settings/MiuiSettings$TabState;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/android/settings/MiuiSettings;->mFrequentlyFragment:Lcom/android/settings/FrequentlyFragment;

    .line 284
    :goto_0
    return-object v0

    .line 283
    :cond_0
    sget-object v0, Lcom/android/settings/MiuiSettings$TabState;->SETTINGS:Lcom/android/settings/MiuiSettings$TabState;

    invoke-virtual {v0}, Lcom/android/settings/MiuiSettings$TabState;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 284
    iget-object v0, p0, Lcom/android/settings/MiuiSettings;->mSettingsFragment:Lcom/android/settings/SettingsFragment;

    goto :goto_0

    .line 287
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private needsDockSettings()Z
    .locals 2

    .prologue
    .line 307
    invoke-virtual {p0}, Lcom/android/settings/MiuiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f09

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 150
    invoke-super {p0, p1, p2, p3, p4}, Landroid/preference/PreferenceActivity;->onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;

    move-result-object v0

    .line 154
    const-class v1, Lcom/android/settings/DataUsageSummary;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Lcom/android/settings/fuelgauge/PowerUsageSummary;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Lcom/android/settings/accounts/AccountSyncSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Lcom/android/settings/UserDictionarySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 158
    :cond_0
    const-string v1, "settings:remove_ui_options"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 161
    :cond_1
    const-class v1, Lcom/android/settings/SubSettings;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 162
    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 75
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 76
    const v3, 0x7f040067

    invoke-virtual {p0, v3}, Lcom/android/settings/MiuiSettings;->setContentView(I)V

    .line 78
    invoke-direct {p0}, Lcom/android/settings/MiuiSettings;->createFragments()V

    .line 79
    invoke-direct {p0}, Lcom/android/settings/MiuiSettings;->createActionBar()V

    .line 81
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 82
    .local v1, prefs:Landroid/content/SharedPreferences;
    const-string v3, "leave_fragment_index"

    sget-object v4, Lcom/android/settings/MiuiSettings$TabState;->COMMON:Lcom/android/settings/MiuiSettings$TabState;

    invoke-virtual {v4}, Lcom/android/settings/MiuiSettings$TabState;->ordinal()I

    move-result v4

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 83
    .local v2, value:I
    invoke-static {v2}, Lcom/android/settings/MiuiSettings$TabState;->fromInt(I)Lcom/android/settings/MiuiSettings$TabState;

    move-result-object v0

    .line 84
    .local v0, currentTab:Lcom/android/settings/MiuiSettings$TabState;
    const/4 v3, 0x1

    invoke-virtual {p0, v0, v3}, Lcom/android/settings/MiuiSettings;->selectTab(Lcom/android/settings/MiuiSettings$TabState;Z)V

    .line 85
    return-void
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    .line 167
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 168
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 169
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "leave_fragment_index"

    iget-object v3, p0, Lcom/android/settings/MiuiSettings;->mCurrentTab:Lcom/android/settings/MiuiSettings$TabState;

    invoke-virtual {v3}, Lcom/android/settings/MiuiSettings$TabState;->ordinal()I

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 170
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 171
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 172
    return-void
.end method

.method public selectTab(Lcom/android/settings/MiuiSettings$TabState;Z)V
    .locals 4
    .parameter "tab"
    .parameter "updateFragment"

    .prologue
    .line 291
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 292
    :cond_0
    iput-object p1, p0, Lcom/android/settings/MiuiSettings;->mCurrentTab:Lcom/android/settings/MiuiSettings$TabState;

    .line 294
    iget-object v1, p0, Lcom/android/settings/MiuiSettings;->mCurrentTab:Lcom/android/settings/MiuiSettings$TabState;

    invoke-virtual {v1}, Lcom/android/settings/MiuiSettings$TabState;->ordinal()I

    move-result v0

    .line 295
    .local v0, index:I
    iget-object v1, p0, Lcom/android/settings/MiuiSettings;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->getNavigationMode()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/settings/MiuiSettings;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->getSelectedNavigationIndex()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 297
    iget-object v1, p0, Lcom/android/settings/MiuiSettings;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 300
    :cond_1
    if-eqz p2, :cond_2

    .line 301
    iget-object v1, p0, Lcom/android/settings/MiuiSettings;->mTabPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1}, Lcom/android/settings/MiuiSettings$TabState;->ordinal()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 303
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/MiuiSettings;->invalidateOptionsMenu()V

    .line 304
    return-void
.end method

.method public updateHeaderList(Ljava/util/List;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 311
    .local p1, target:Ljava/util/List;,"Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    const/4 v1, 0x0

    .line 313
    .local v1, i:I
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_9

    .line 314
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    .line 316
    .local v0, header:Landroid/preference/PreferenceActivity$Header;
    iget-wide v3, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    long-to-int v2, v3

    .line 317
    .local v2, id:I
    const v3, 0x7f0801eb

    if-ne v2, v3, :cond_2

    .line 318
    invoke-direct {p0}, Lcom/android/settings/MiuiSettings;->needsDockSettings()Z

    move-result v3

    if-nez v3, :cond_1

    .line 319
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 344
    :cond_1
    :goto_1
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_0

    .line 345
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 320
    :cond_2
    const v3, 0x7f0801e0

    if-eq v2, v3, :cond_3

    const v3, 0x7f0801ea

    if-ne v2, v3, :cond_4

    .line 321
    :cond_3
    invoke-static {p0, p1, v0}, Lcom/android/settings/Utils;->updateHeaderToSpecificActivityFromMetaDataOrRemove(Landroid/content/Context;Ljava/util/List;Landroid/preference/PreferenceActivity$Header;)Z

    goto :goto_1

    .line 322
    :cond_4
    const v3, 0x7f0801df

    if-ne v2, v3, :cond_5

    .line 324
    invoke-virtual {p0}, Lcom/android/settings/MiuiSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "android.hardware.wifi"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 325
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 327
    :cond_5
    const v3, 0x7f0801d3

    if-ne v2, v3, :cond_6

    .line 329
    invoke-virtual {p0}, Lcom/android/settings/MiuiSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "android.hardware.bluetooth"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 330
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 332
    :cond_6
    const v3, 0x7f0801db

    if-ne v2, v3, :cond_7

    invoke-static {p0}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 334
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 335
    :cond_7
    const v3, 0x7f0801d1

    if-ne v2, v3, :cond_8

    invoke-static {p0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v3

    if-nez v3, :cond_8

    .line 337
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 338
    :cond_8
    const v3, 0x7f0801da

    if-ne v2, v3, :cond_1

    sget-boolean v3, Lmiui/os/Build;->IS_MIONE:Z

    if-nez v3, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/MiuiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090008

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 340
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 348
    .end local v0           #header:Landroid/preference/PreferenceActivity$Header;
    .end local v2           #id:I
    :cond_9
    return-void
.end method
