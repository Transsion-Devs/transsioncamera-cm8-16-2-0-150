.class public abstract Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final BROWN_SKIN_VIDEO_FILTER_ITEM_LIST:Ljava/util/List;

.field private static final TRANSSION_FILTER_ID_LIST:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 11
    new-instance v0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleInfo$1;

    invoke-direct {v0}, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleInfo$1;-><init>()V

    sput-object v0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleInfo;->TRANSSION_FILTER_ID_LIST:Ljava/util/List;

    .line 20
    new-instance v0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleInfo$2;

    invoke-direct {v0}, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleInfo$2;-><init>()V

    sput-object v0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleInfo;->BROWN_SKIN_VIDEO_FILTER_ITEM_LIST:Ljava/util/List;

    return-void
.end method

.method public static getStreetPhotoFilterItem()Ljava/util/List;
    .registers 1

    .line 30
    sget-object v0, Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleInfo;->BROWN_SKIN_VIDEO_FILTER_ITEM_LIST:Ljava/util/List;

    return-object v0
.end method
