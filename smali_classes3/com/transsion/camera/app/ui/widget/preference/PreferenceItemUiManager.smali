.class public abstract Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUiManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUiManager$StateSwitchPreferenceUi;,
        Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUiManager$OSListPreferenceUi;,
        Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUiManager$MyDialogPreferenceUi;,
        Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUiManager$FragmentPreferenceUi;,
        Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUiManager$NonePreferenceUi;,
        Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUiManager$CustomFragmentPreferenceUi;,
        Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUiManager$UpdateSwitchPerferenceUi;,
        Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUiManager$OSDialogPreferenceUi;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static mBindViewListener:Lcom/transsion/camera/app/common/ui/preference/BindViewListener;


# direct methods
.method static bridge synthetic -$$Nest$sfgetmBindViewListener()Lcom/transsion/camera/app/common/ui/preference/BindViewListener;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUiManager;->mBindViewListener:Lcom/transsion/camera/app/common/ui/preference/BindViewListener;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 24
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "PreferenceItemUiManager"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUiManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public static create(ILandroid/content/Context;Lcom/transsion/camera/app/common/ui/setting/IPreferenceItemUI;ILcom/transsion/camera/app/common/ui/setting/SettingUISpec;)Landroid/preference/Preference;
    .registers 5

    packed-switch p0, :pswitch_data_30

    const/4 p0, 0x0

    return-object p0

    .line 51
    :pswitch_5
    new-instance p3, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUiManager$UpdateSwitchPerferenceUi;

    invoke-direct {p3, p1, p0, p2}, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUiManager$UpdateSwitchPerferenceUi;-><init>(Landroid/content/Context;ILcom/transsion/camera/app/common/ui/setting/IPreferenceItemUI;)V

    return-object p3

    .line 48
    :pswitch_b
    new-instance p3, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUiManager$CustomFragmentPreferenceUi;

    invoke-direct {p3, p1, p0, p2}, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUiManager$CustomFragmentPreferenceUi;-><init>(Landroid/content/Context;ILcom/transsion/camera/app/common/ui/setting/IPreferenceItemUI;)V

    return-object p3

    .line 42
    :pswitch_11
    new-instance p2, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUiManager$FragmentPreferenceUi;

    invoke-direct {p2, p1, p0}, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUiManager$FragmentPreferenceUi;-><init>(Landroid/content/Context;I)V

    return-object p2

    .line 36
    :pswitch_17
    new-instance p3, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUiManager$OSListPreferenceUi;

    invoke-direct {p3, p1, p0, p2, p4}, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUiManager$OSListPreferenceUi;-><init>(Landroid/content/Context;ILcom/transsion/camera/app/common/ui/setting/IPreferenceItemUI;Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;)V

    return-object p3

    .line 32
    :pswitch_1d
    new-instance p2, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUiManager$StateSwitchPreferenceUi;

    invoke-direct {p2, p1, p0}, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUiManager$StateSwitchPreferenceUi;-><init>(Landroid/content/Context;I)V

    return-object p2

    .line 39
    :pswitch_23
    new-instance p3, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUiManager$MyDialogPreferenceUi;

    invoke-direct {p3, p1, p0, p2}, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUiManager$MyDialogPreferenceUi;-><init>(Landroid/content/Context;ILcom/transsion/camera/app/common/ui/setting/IPreferenceItemUI;)V

    return-object p3

    .line 45
    :pswitch_29
    new-instance p3, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUiManager$NonePreferenceUi;

    invoke-direct {p3, p1, p0, p2}, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUiManager$NonePreferenceUi;-><init>(Landroid/content/Context;ILcom/transsion/camera/app/common/ui/setting/IPreferenceItemUI;)V

    return-object p3

    nop

    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_29
        :pswitch_23
        :pswitch_1d
        :pswitch_17
        :pswitch_17
        :pswitch_11
        :pswitch_b
        :pswitch_5
    .end packed-switch
.end method

.method public static setBindViewListener(Lcom/transsion/camera/app/common/ui/preference/BindViewListener;)V
    .registers 1

    .line 58
    sput-object p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUiManager;->mBindViewListener:Lcom/transsion/camera/app/common/ui/preference/BindViewListener;

    return-void
.end method
