.class Lcom/transsion/camera/feature/setting/smiledetection/SmileDetectAlgorithmImpl$AttributeData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/smiledetection/SmileDetectAlgorithmImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AttributeData"
.end annotation


# instance fields
.field faceInfo:Lcom/stmobile/facebasejni/common/FaceInfo;

.field height:I

.field nv21:[B

.field width:I


# direct methods
.method public constructor <init>(Lcom/stmobile/facebasejni/common/FaceInfo;[BII)V
    .registers 5

    .line 301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 302
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetectAlgorithmImpl$AttributeData;->faceInfo:Lcom/stmobile/facebasejni/common/FaceInfo;

    .line 303
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetectAlgorithmImpl$AttributeData;->nv21:[B

    .line 304
    iput p3, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetectAlgorithmImpl$AttributeData;->width:I

    .line 305
    iput p4, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetectAlgorithmImpl$AttributeData;->height:I

    return-void
.end method
