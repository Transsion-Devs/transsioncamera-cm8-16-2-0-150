.class public Lcom/ss/android/vesdk/lens/VEOneKeyProcessParams;
.super Lcom/ss/android/vesdk/lens/VEBaseRecorderLensParams;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field public faceNum:I

.field public faceRects:[Landroid/graphics/Rect;

.field public isFirstFrame:Z

.field public iso:I

.field public maxIso:I

.field public minIso:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 7
    invoke-direct {p0}, Lcom/ss/android/vesdk/lens/VEBaseRecorderLensParams;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lcom/ss/android/vesdk/lens/VEOneKeyProcessParams;->iso:I

    .line 16
    iput v0, p0, Lcom/ss/android/vesdk/lens/VEOneKeyProcessParams;->maxIso:I

    .line 21
    iput v0, p0, Lcom/ss/android/vesdk/lens/VEOneKeyProcessParams;->minIso:I

    .line 26
    iput-boolean v0, p0, Lcom/ss/android/vesdk/lens/VEOneKeyProcessParams;->isFirstFrame:Z

    .line 31
    iput v0, p0, Lcom/ss/android/vesdk/lens/VEOneKeyProcessParams;->faceNum:I

    return-void
.end method
