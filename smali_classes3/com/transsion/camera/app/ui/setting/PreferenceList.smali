.class public Lcom/transsion/camera/app/ui/setting/PreferenceList;
.super Lcom/transsion/camera/app/ui/setting/AbstractPreferenceList;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# direct methods
.method public static synthetic $r8$lambda$7y3-U42KQePzGdYmXlM5dxtUOkY(Lcom/transsion/camera/app/common/ui/setting/IPreferenceItemUI;Landroid/view/View;)V
    .registers 2

    .line 76
    invoke-interface {p0}, Lcom/transsion/camera/app/common/ui/setting/IPreferenceItemUI;->onItemClick()V

    return-void
.end method

.method static bridge synthetic -$$Nest$monBindItemView(Lcom/transsion/camera/app/ui/setting/PreferenceList;Landroid/view/View;Landroid/preference/Preference;ILcom/transsion/camera/app/common/ui/setting/IPreferenceItemUI;)V
    .registers 5

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/camera/app/ui/setting/PreferenceList;->onBindItemView(Landroid/view/View;Landroid/preference/Preference;ILcom/transsion/camera/app/common/ui/setting/IPreferenceItemUI;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 23
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "PreferenceList"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/setting/PreferenceList;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 25
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/setting/AbstractPreferenceList;-><init>()V

    .line 26
    new-instance v0, Lcom/transsion/camera/app/ui/setting/PreferenceList$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/setting/PreferenceList$1;-><init>(Lcom/transsion/camera/app/ui/setting/PreferenceList;)V

    invoke-static {v0}, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUiManager;->setBindViewListener(Lcom/transsion/camera/app/common/ui/preference/BindViewListener;)V

    return-void
.end method

.method private onBindItemView(Landroid/view/View;Landroid/preference/Preference;ILcom/transsion/camera/app/common/ui/setting/IPreferenceItemUI;)V
    .registers 9

    .line 47
    sget p0, Lcom/transsion/camera/R$id;->preference_layout:I

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .line 48
    invoke-virtual {p2}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_1b

    .line 49
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$dimen;->setting_single_line_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setMinimumHeight(I)V

    goto :goto_29

    .line 51
    :cond_1b
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$dimen;->setting_double_line_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setMinimumHeight(I)V

    .line 53
    :goto_29
    invoke-virtual {p2}, Landroid/preference/Preference;->getParent()Landroid/preference/PreferenceGroup;

    move-result-object p0

    if-nez p0, :cond_30

    return-void

    .line 57
    :cond_30
    sget p0, Lcom/transsion/camera/R$id;->preference_background:I

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .line 58
    invoke-virtual {p2}, Landroid/preference/Preference;->getParent()Landroid/preference/PreferenceGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    .line 59
    invoke-virtual {p2}, Landroid/preference/Preference;->getOrder()I

    move-result v1

    const/4 v2, 0x1

    if-le v0, v2, :cond_5d

    if-nez v1, :cond_4d

    .line 62
    sget v1, Lcom/transsion/camera/R$drawable;->list_item_view_bg_top_corners:I

    invoke-virtual {p0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_62

    :cond_4d
    add-int/lit8 v3, v0, -0x1

    if-ne v1, v3, :cond_57

    .line 64
    sget v1, Lcom/transsion/camera/R$drawable;->list_item_view_bg_bottom_corners:I

    invoke-virtual {p0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_62

    .line 66
    :cond_57
    sget v1, Lcom/transsion/camera/R$drawable;->list_item_view_bg_rectangle:I

    invoke-virtual {p0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_62

    .line 69
    :cond_5d
    sget v1, Lcom/transsion/camera/R$drawable;->list_item_view_bg_corners:I

    invoke-virtual {p0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_62
    if-eqz p4, :cond_80

    .line 71
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isSupportColumnOrBoth()Z

    move-result p0

    if-eqz p0, :cond_80

    .line 72
    sget p0, Lcom/transsion/camera/R$id;->preference_list_item:I

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eq v2, p3, :cond_75

    const/4 p1, 0x3

    if-ne p1, p3, :cond_80

    .line 74
    :cond_75
    invoke-virtual {p0, v2}, Landroid/view/View;->setClickable(Z)V

    .line 75
    new-instance p1, Lcom/transsion/camera/app/ui/setting/PreferenceList$$ExternalSyntheticLambda0;

    invoke-direct {p1, p4}, Lcom/transsion/camera/app/ui/setting/PreferenceList$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/common/ui/setting/IPreferenceItemUI;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    :cond_80
    sget-object p0, Lcom/transsion/camera/app/ui/setting/PreferenceList;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onBindItemView key:"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " order:"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/preference/Preference;->getOrder()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "  count:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private setCustomPreferenceLayout(Landroid/preference/Preference;)V
    .registers 2

    .line 127
    instance-of p0, p1, Lcom/transsion/camera/app/common/ui/preference/UpdateSwitchPerference;

    if-eqz p0, :cond_a

    .line 128
    sget p0, Lcom/transsion/camera/R$layout;->update_switch_preference:I

    invoke-virtual {p1, p0}, Landroid/preference/Preference;->setLayoutResource(I)V

    goto :goto_23

    .line 129
    :cond_a
    instance-of p0, p1, Landroid/preference/SwitchPreference;

    if-eqz p0, :cond_14

    .line 130
    sget p0, Lcom/transsion/camera/R$layout;->preference_switch_layout:I

    invoke-virtual {p1, p0}, Landroid/preference/Preference;->setLayoutResource(I)V

    goto :goto_23

    .line 131
    :cond_14
    instance-of p0, p1, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUiManager$CustomFragmentPreferenceUi;

    if-eqz p0, :cond_1e

    .line 132
    sget p0, Lcom/transsion/camera/R$layout;->custom_preference_item_layout:I

    invoke-virtual {p1, p0}, Landroid/preference/Preference;->setLayoutResource(I)V

    goto :goto_23

    .line 134
    :cond_1e
    sget p0, Lcom/transsion/camera/R$layout;->preference_item_layout:I

    invoke-virtual {p1, p0}, Landroid/preference/Preference;->setLayoutResource(I)V

    :goto_23
    const/4 p0, 0x1

    .line 136
    invoke-virtual {p1, p0}, Landroid/preference/Preference;->setRecycleEnabled(Z)V

    return-void
.end method


# virtual methods
.method public addGeneralPreferenceList(Ljava/util/List;Landroid/preference/PreferenceGroup;Landroid/preference/PreferenceScreen;)V
    .registers 7

    const/4 v0, 0x0

    .line 89
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_25

    .line 90
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/Preference;

    if-eqz p2, :cond_22

    .line 91
    invoke-virtual {v1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-nez v2, :cond_22

    .line 92
    invoke-direct {p0, v1}, Lcom/transsion/camera/app/ui/setting/PreferenceList;->setCustomPreferenceLayout(Landroid/preference/Preference;)V

    .line 93
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setOrder(I)V

    .line 94
    invoke-virtual {p2, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 97
    :cond_25
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-nez p0, :cond_30

    if-eqz p2, :cond_30

    .line 98
    invoke-virtual {p3, p2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_30
    return-void
.end method

.method public addPhotoPreferenceList(Ljava/util/List;Landroid/preference/PreferenceGroup;)V
    .registers 6

    const/4 v0, 0x0

    .line 104
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_25

    .line 105
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/Preference;

    if-eqz p2, :cond_22

    .line 106
    invoke-virtual {v1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-nez v2, :cond_22

    .line 107
    invoke-direct {p0, v1}, Lcom/transsion/camera/app/ui/setting/PreferenceList;->setCustomPreferenceLayout(Landroid/preference/Preference;)V

    .line 108
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setOrder(I)V

    .line 109
    invoke-virtual {p2, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_25
    return-void
.end method

.method public addVideoPreferenceList(Ljava/util/List;Landroid/preference/PreferenceGroup;)V
    .registers 6

    const/4 v0, 0x0

    .line 116
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_25

    .line 117
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/Preference;

    if-eqz p2, :cond_22

    .line 118
    invoke-virtual {v1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-nez v2, :cond_22

    .line 119
    invoke-direct {p0, v1}, Lcom/transsion/camera/app/ui/setting/PreferenceList;->setCustomPreferenceLayout(Landroid/preference/Preference;)V

    .line 120
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setOrder(I)V

    .line 121
    invoke-virtual {p2, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_25
    return-void
.end method

.method public getPreferenceResource()I
    .registers 1

    .line 85
    sget p0, Lcom/transsion/camera/R$xml;->camera_preferences:I

    return p0
.end method
