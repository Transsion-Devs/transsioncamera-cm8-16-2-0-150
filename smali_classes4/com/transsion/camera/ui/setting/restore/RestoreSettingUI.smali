.class public Lcom/transsion/camera/ui/setting/restore/RestoreSettingUI;
.super Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;
.source "SourceFile"


# static fields
.field private static final ACTION_DISABLE_ARRAY_LIST:Ljava/util/ArrayList;

.field private static final ACTION_ENABLE_ARRAY_LIST:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 14
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    .line 15
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x4

    .line 16
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x6

    .line 17
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/Integer;

    move-result-object v1

    .line 14
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/restore/RestoreSettingUI;->ACTION_DISABLE_ARRAY_LIST:Ljava/util/ArrayList;

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    .line 21
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    .line 22
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x5

    .line 23
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x7

    .line 24
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/Integer;

    move-result-object v1

    .line 21
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/restore/RestoreSettingUI;->ACTION_ENABLE_ARRAY_LIST:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;)V
    .registers 2

    .line 29
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;-><init>(Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;)V

    return-void
.end method


# virtual methods
.method public notifyCameraOperateAction(I)V
    .registers 4

    .line 34
    sget-object v0, Lcom/transsion/camera/ui/setting/restore/RestoreSettingUI;->ACTION_DISABLE_ARRAY_LIST:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 35
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->getPreference()Landroid/preference/Preference;

    move-result-object p0

    if-eqz p0, :cond_2d

    const/4 p1, 0x0

    .line 37
    invoke-virtual {p0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    return-void

    .line 39
    :cond_17
    sget-object v0, Lcom/transsion/camera/ui/setting/restore/RestoreSettingUI;->ACTION_ENABLE_ARRAY_LIST:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2d

    .line 40
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->getPreference()Landroid/preference/Preference;

    move-result-object p0

    if-eqz p0, :cond_2d

    const/4 p1, 0x1

    .line 42
    invoke-virtual {p0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_2d
    return-void
.end method
