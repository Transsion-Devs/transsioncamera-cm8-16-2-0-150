.class public Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUIEntry;
.super Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;
.source "SourceFile"


# instance fields
.field private mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .registers 2

    .line 22
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;-><init>(Landroid/content/res/Resources;)V

    .line 23
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUIEntry;->mResources:Landroid/content/res/Resources;

    return-void
.end method


# virtual methods
.method public createCommonUI()Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;
    .registers 3

    .line 28
    new-instance v0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUIEntry;->mResources:Landroid/content/res/Resources;

    invoke-direct {v0, v1}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSettingUI;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mCommonSettingUI:Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    return-object v0
.end method
