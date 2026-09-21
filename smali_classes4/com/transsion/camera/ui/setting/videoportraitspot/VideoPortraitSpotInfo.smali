.class public abstract Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final VIDEO_PORTRAIT_SPOT_SUPPORT_ITEM_LIST:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 15
    new-instance v0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotInfo$1;

    invoke-direct {v0}, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotInfo$1;-><init>()V

    sput-object v0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotInfo;->VIDEO_PORTRAIT_SPOT_SUPPORT_ITEM_LIST:Ljava/util/List;

    return-void
.end method

.method public static getAllFunctionItem()Ljava/util/List;
    .registers 1

    .line 24
    sget-object v0, Lcom/transsion/camera/ui/setting/videoportraitspot/VideoPortraitSpotInfo;->VIDEO_PORTRAIT_SPOT_SUPPORT_ITEM_LIST:Ljava/util/List;

    return-object v0
.end method
