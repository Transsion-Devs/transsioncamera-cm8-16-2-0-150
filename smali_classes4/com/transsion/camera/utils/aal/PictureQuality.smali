.class abstract Lcom/transsion/camera/utils/aal/PictureQuality;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static setAALFunction(I)V
    .registers 2

    .line 76
    new-instance v0, Lcom/transsion/hubsdk/api/pq/TranPictureQuality;

    invoke-direct {v0}, Lcom/transsion/hubsdk/api/pq/TranPictureQuality;-><init>()V

    .line 77
    invoke-virtual {v0, p0}, Lcom/transsion/hubsdk/api/pq/TranPictureQuality;->setAALFunction(I)V

    return-void
.end method

.method static setSmartBackLightStrength(I)V
    .registers 2

    .line 66
    new-instance v0, Lcom/transsion/hubsdk/api/pq/TranPictureQuality;

    invoke-direct {v0}, Lcom/transsion/hubsdk/api/pq/TranPictureQuality;-><init>()V

    .line 67
    invoke-virtual {v0, p0}, Lcom/transsion/hubsdk/api/pq/TranPictureQuality;->setSmartBacklightStrength(I)V

    return-void
.end method
