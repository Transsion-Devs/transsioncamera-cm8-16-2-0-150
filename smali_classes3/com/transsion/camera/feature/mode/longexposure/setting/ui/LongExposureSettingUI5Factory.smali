.class public Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI5Factory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/provider/ISettingUIFactory;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createCommonUI(Landroid/content/res/Resources;)Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;
    .registers 2

    .line 13
    new-instance p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI5;

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureSettingUI5;-><init>(Landroid/content/res/Resources;)V

    return-object p0
.end method
