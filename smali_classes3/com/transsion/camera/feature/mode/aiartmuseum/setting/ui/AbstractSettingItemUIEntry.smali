.class public abstract Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AbstractSettingItemUIEntry;
.super Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/ISettingItemUIEntry;


# instance fields
.field protected final mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .registers 2

    .line 23
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;-><init>(Landroid/content/res/Resources;)V

    .line 24
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AbstractSettingItemUIEntry;->mResources:Landroid/content/res/Resources;

    return-void
.end method


# virtual methods
.method public createItemUI()Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/ISettingItemUI;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public isSupported()Z
    .registers 2

    .line 34
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AbstractSettingItemUIEntry;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/transsion/camera/app/common/R$bool;->ai_art_museum_support:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method
