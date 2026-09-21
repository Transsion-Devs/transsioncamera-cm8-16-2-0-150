.class public Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUIFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/provider/ISettingUIFactory;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createCommonUI(Landroid/content/res/Resources;)Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;
    .registers 2

    .line 25
    new-instance p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingUI;-><init>(Landroid/content/res/Resources;)V

    return-object p0
.end method
