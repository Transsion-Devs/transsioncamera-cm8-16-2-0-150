.class final Lcom/bytedance/ies/cutsame/util/FileUtils$decodeOptions$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/ies/cutsame/util/FileUtils;->decodeOptions(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
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
.field final synthetic $bitmap:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef;"
        }
    .end annotation
.end field

.field final synthetic $options:Landroid/graphics/BitmapFactory$Options;


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/graphics/BitmapFactory$Options;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$ObjectRef;",
            "Landroid/graphics/BitmapFactory$Options;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/bytedance/ies/cutsame/util/FileUtils$decodeOptions$1;->$bitmap:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p2, p0, Lcom/bytedance/ies/cutsame/util/FileUtils$decodeOptions$1;->$options:Landroid/graphics/BitmapFactory$Options;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 145
    check-cast p1, Ljava/io/FileDescriptor;

    invoke-virtual {p0, p1}, Lcom/bytedance/ies/cutsame/util/FileUtils$decodeOptions$1;->invoke(Ljava/io/FileDescriptor;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Ljava/io/FileDescriptor;)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    .line 146
    :cond_3
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/util/FileUtils$decodeOptions$1;->$bitmap:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p0, p0, Lcom/bytedance/ies/cutsame/util/FileUtils$decodeOptions$1;->$options:Landroid/graphics/BitmapFactory$Options;

    const/4 v1, 0x0

    .line 147
    invoke-static {p1, v1, p0}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    iput-object p0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    return-void
.end method
