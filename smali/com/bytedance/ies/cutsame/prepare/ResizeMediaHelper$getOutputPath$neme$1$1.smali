.class final Lcom/bytedance/ies/cutsame/prepare/ResizeMediaHelper$getOutputPath$neme$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/ies/cutsame/prepare/ResizeMediaHelper;->getOutputPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1;"
    }
.end annotation


# instance fields
.field final synthetic $options:Landroid/graphics/BitmapFactory$Options;


# direct methods
.method constructor <init>(Landroid/graphics/BitmapFactory$Options;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/ies/cutsame/prepare/ResizeMediaHelper$getOutputPath$neme$1$1;->$options:Landroid/graphics/BitmapFactory$Options;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 233
    check-cast p1, Ljava/io/FileDescriptor;

    invoke-virtual {p0, p1}, Lcom/bytedance/ies/cutsame/prepare/ResizeMediaHelper$getOutputPath$neme$1$1;->invoke(Ljava/io/FileDescriptor;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Ljava/io/FileDescriptor;)V
    .registers 3

    const/4 v0, 0x0

    .line 234
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/prepare/ResizeMediaHelper$getOutputPath$neme$1$1;->$options:Landroid/graphics/BitmapFactory$Options;

    invoke-static {p1, v0, p0}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    return-void
.end method
