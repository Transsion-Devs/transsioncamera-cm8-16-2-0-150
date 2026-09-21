.class public Lcom/transsion/camera/ui/setting/portraitarchitecture/PortraitArchitectureSettingUISpec;
.super Lcom/transsion/camera/app/ui/setting/spec/UpdateSettingUISpec;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 26
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "PortraitArchitectureSettingUISpec"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/portraitarchitecture/PortraitArchitectureSettingUISpec;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .registers 3

    .line 28
    const-string v0, "key_portrait_architecture"

    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/app/ui/setting/spec/UpdateSettingUISpec;-><init>(Ljava/lang/String;Landroid/content/res/Resources;)V

    .line 29
    sget-object p0, Lcom/transsion/camera/ui/setting/portraitarchitecture/PortraitArchitectureSettingUISpec;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "PortraitArchitectureSettingUISpec"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected initDialogButtonText(Landroid/content/res/Resources;)Ljava/lang/String;
    .registers 2

    .line 50
    sget p0, Lcom/transsion/camera/R$string;->portrait_architecture_setting_dialogbutton:I

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected initDialogClickCallback()Landroid/view/View$OnClickListener;
    .registers 1

    return-object p0
.end method

.method protected initEntryDrawables(Landroid/content/res/Resources;)Landroid/content/res/TypedArray;
    .registers 2

    .line 77
    sget p0, Lcom/transsion/camera/R$array;->portrait_architecture_setting_entry_drawables:I

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p0

    return-object p0
.end method

.method protected initIcon(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 65
    sget p0, Lcom/transsion/camera/R$drawable;->portrait_architecture_ic:I

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method protected initMessage(Landroid/content/res/Resources;)Ljava/lang/String;
    .registers 2

    .line 55
    sget p0, Lcom/transsion/camera/R$string;->portrait_architecture_setting_message:I

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected initNegativeText(Landroid/content/res/Resources;)Ljava/lang/String;
    .registers 2

    .line 45
    sget p0, Lcom/transsion/camera/R$string;->portrait_architecture_setting_negative:I

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected initPositiveText(Landroid/content/res/Resources;)Ljava/lang/String;
    .registers 2

    .line 40
    sget p0, Lcom/transsion/camera/R$string;->portrait_architecture_setting_positive:I

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected initShowUpdateICon()Z
    .registers 1

    .line 82
    invoke-static {}, Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;->getInstance()Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;->needShowUpdateIcon()Z

    move-result p0

    return p0
.end method

.method protected initSummary(Landroid/content/res/Resources;)[Ljava/lang/String;
    .registers 4

    .line 70
    sget p0, Lcom/transsion/camera/R$string;->portrait_architecture_setting_summary_on:I

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    sget v0, Lcom/transsion/camera/R$string;->portrait_architecture_setting_summary_off_no_update:I

    .line 71
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$string;->portrait_architecture_setting_summary_off:I

    .line 72
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p0, v0, p1}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected initTitle(Landroid/content/res/Resources;)Ljava/lang/String;
    .registers 2

    .line 60
    sget p0, Lcom/transsion/camera/R$string;->portrait_architecture_setting_title:I

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected initUpdateMessage(Landroid/content/res/Resources;)Ljava/lang/String;
    .registers 3

    .line 34
    sget-object p0, Lcom/transsion/camera/ui/setting/portraitarchitecture/PortraitArchitectureSettingUISpec;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "initUpdateMessage"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 35
    sget p0, Lcom/transsion/camera/R$string;->portrait_architecture_setting_update_message:I

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 92
    invoke-static {}, Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;->getInstance()Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/featurelibs/portraitarchitecture/PortraitArchitectureManager;->downLoadRes()V

    return-void
.end method
