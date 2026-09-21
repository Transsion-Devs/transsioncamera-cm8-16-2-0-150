.class Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLayout$1;
.super Ljava/util/HashMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLayout;


# direct methods
.method constructor <init>(Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLayout;)V
    .registers 4

    .line 51
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLayout$1;->this$0:Lcom/transsion/camera/ui/setting/videoportraitlevel/VideoPortraitLayout;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const/4 p1, 0x0

    .line 53
    :goto_6
    sget-object v0, Lcom/transsion/camera/utils/SettingInfo;->BLUR_LEVEL_DATA:[Ljava/lang/String;

    array-length v1, v0

    if-ge p1, v1, :cond_17

    .line 54
    aget-object v0, v0, p1

    sget-object v1, Lcom/transsion/camera/utils/SettingInfo;->VIDEO_PORTRAIT_DATA:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {p0, v0, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x1

    goto :goto_6

    :cond_17
    return-void
.end method
