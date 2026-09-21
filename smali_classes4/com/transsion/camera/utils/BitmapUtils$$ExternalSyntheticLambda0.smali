.class public final synthetic Lcom/transsion/camera/utils/BitmapUtils$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(II)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/transsion/camera/utils/BitmapUtils$$ExternalSyntheticLambda0;->f$0:I

    iput p2, p0, Lcom/transsion/camera/utils/BitmapUtils$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final onHeaderDecoded(Landroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$ImageInfo;Landroid/graphics/ImageDecoder$Source;)V
    .registers 5

    .line 0
    iget v0, p0, Lcom/transsion/camera/utils/BitmapUtils$$ExternalSyntheticLambda0;->f$0:I

    iget p0, p0, Lcom/transsion/camera/utils/BitmapUtils$$ExternalSyntheticLambda0;->f$1:I

    invoke-static {v0, p0, p1, p2, p3}, Lcom/transsion/camera/utils/BitmapUtils;->$r8$lambda$bSHXvcf4pyXf4H7iSRFO4D7_5UQ(IILandroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$ImageInfo;Landroid/graphics/ImageDecoder$Source;)V

    return-void
.end method
