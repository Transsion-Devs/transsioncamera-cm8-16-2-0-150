.class public abstract Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/ITDFaceBeautyResConstant;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final sBlackIconMap:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 14
    new-instance v0, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/ITDFaceBeautyResConstant$1;

    invoke-direct {v0}, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/ITDFaceBeautyResConstant$1;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/ITDFaceBeautyResConstant;->sBlackIconMap:Ljava/util/Map;

    return-void
.end method

.method public static updateFaceBeautyImageView(Landroid/widget/ImageView;IZ)V
    .registers 4

    if-gtz p1, :cond_3

    return-void

    :cond_3
    if-eqz p2, :cond_21

    .line 42
    sget-object p2, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/ITDFaceBeautyResConstant;->sBlackIconMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    if-eqz p2, :cond_21

    .line 43
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_21

    .line 44
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    .line 49
    :cond_21
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method
