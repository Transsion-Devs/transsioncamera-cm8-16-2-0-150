.class public final synthetic Lcom/imaging/libwatermark/WatermarkHelper$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lcom/imaging/libwatermark/WatermarkHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/imaging/libwatermark/WatermarkHelper;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/imaging/libwatermark/WatermarkHelper$$ExternalSyntheticLambda1;->f$0:Lcom/imaging/libwatermark/WatermarkHelper;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/imaging/libwatermark/WatermarkHelper$$ExternalSyntheticLambda1;->f$0:Lcom/imaging/libwatermark/WatermarkHelper;

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-static {p0, p1}, Lcom/imaging/libwatermark/WatermarkHelper;->$r8$lambda$mN60vTOcMJSCv3_uiOzaeEQ14Y8(Lcom/imaging/libwatermark/WatermarkHelper;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method
