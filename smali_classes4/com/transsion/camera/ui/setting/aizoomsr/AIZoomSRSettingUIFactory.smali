.class public Lcom/transsion/camera/ui/setting/aizoomsr/AIZoomSRSettingUIFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/provider/ISettingUIFactory;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createCommonUI(Landroid/content/res/Resources;)Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;
    .registers 2

    .line 11
    new-instance p0, Lcom/transsion/camera/ui/setting/aizoomsr/AIZoomSRUI;

    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/aizoomsr/AIZoomSRUI;-><init>(Landroid/content/res/Resources;)V

    return-object p0
.end method
