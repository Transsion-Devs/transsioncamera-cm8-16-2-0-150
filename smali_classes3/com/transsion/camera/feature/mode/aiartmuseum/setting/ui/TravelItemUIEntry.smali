.class public Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/TravelItemUIEntry;
.super Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AbstractSettingItemUIEntry;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .registers 2

    .line 22
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AbstractSettingItemUIEntry;-><init>(Landroid/content/res/Resources;)V

    return-void
.end method


# virtual methods
.method public createItemUI()Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/ISettingItemUI;
    .registers 3

    .line 32
    new-instance v0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/TravelItemUI;

    new-instance v1, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumTravelUISpec;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AbstractSettingItemUIEntry;->mResources:Landroid/content/res/Resources;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumTravelUISpec;-><init>(Landroid/content/res/Resources;)V

    invoke-direct {v0, v1}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/TravelItemUI;-><init>(Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AbstractItemUISpec;)V

    return-object v0
.end method

.method public createSettingGuideItemUI()Lcom/transsion/camera/app/common/ui/setting/ISettingGuideItemUI;
    .registers 4

    .line 27
    new-instance v0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingGuideItemUI;

    sget v1, Lcom/transsion/camera/feature/aiartmuseum/R$array;->ai_art_museum_travel_guide_layout_id:I

    new-instance v2, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumTravelUISpec;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AbstractSettingItemUIEntry;->mResources:Landroid/content/res/Resources;

    invoke-direct {v2, p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumTravelUISpec;-><init>(Landroid/content/res/Resources;)V

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumSettingGuideItemUI;-><init>(ILcom/transsion/camera/app/common/ui/setting/SettingUISpec;)V

    return-object v0
.end method
