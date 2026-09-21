.class public Lcom/gallery20/sdk/ai_art/network/bean/ProcessResultBean$DataBean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gallery20/sdk/ai_art/network/bean/ProcessResultBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation


# instance fields
.field public bucketName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "bucket_name"
    .end annotation
.end field

.field public endpoint:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "endpoint"
    .end annotation
.end field

.field public id:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field public imageUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "imageUrl"
    .end annotation
.end field

.field public inputImageResizeFlag:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "inputImageResizeFlag"
    .end annotation
.end field

.field public originalHeight:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "originalHeight"
    .end annotation
.end field

.field public originalWidth:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "originalWidth"
    .end annotation
.end field

.field public schedulerServiceStatus:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "schedulerServiceStatus"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
