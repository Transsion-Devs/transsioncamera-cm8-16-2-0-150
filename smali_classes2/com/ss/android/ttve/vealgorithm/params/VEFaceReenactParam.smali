.class public Lcom/ss/android/ttve/vealgorithm/params/VEFaceReenactParam;
.super Lcom/ss/android/ttve/vealgorithm/params/VEAlgorithmParam;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field public algConfigJson:Ljava/lang/String;

.field public blend:Z

.field public faceCount:I

.field public hwEncode:Z

.field public imagePath:Ljava/lang/String;

.field public kernel_path:Ljava/lang/String;

.field public keyPointFilePath:Ljava/lang/String;

.field public outMaxHeight:I

.field public outMaxWidth:I

.field public outputPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 7
    invoke-direct {p0}, Lcom/ss/android/ttve/vealgorithm/params/VEAlgorithmParam;-><init>()V

    .line 8
    sget v0, Lcom/ss/android/ttve/vealgorithm/params/VEAlgorithmType;->VE_ALGORITHM_TYPE_FACE_REENACT:I

    iput v0, p0, Lcom/ss/android/ttve/vealgorithm/params/VEAlgorithmParam;->type:I

    return-void
.end method
