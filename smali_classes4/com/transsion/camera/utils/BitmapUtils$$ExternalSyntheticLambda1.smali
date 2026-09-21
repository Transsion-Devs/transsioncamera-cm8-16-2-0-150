.class public final synthetic Lcom/transsion/camera/utils/BitmapUtils$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/transsion/camera/utils/BitmapUtils$$ExternalSyntheticLambda1;->f$0:I

    return-void
.end method


# virtual methods
.method public final onHeaderDecoded(Landroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$ImageInfo;Landroid/graphics/ImageDecoder$Source;)V
    .registers 4

    .line 0
    iget p0, p0, Lcom/transsion/camera/utils/BitmapUtils$$ExternalSyntheticLambda1;->f$0:I

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/camera/utils/BitmapUtils;->$r8$lambda$q9YSC94NZnqb4L6HGqLspgcHq6s(ILandroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$ImageInfo;Landroid/graphics/ImageDecoder$Source;)V

    return-void
.end method
