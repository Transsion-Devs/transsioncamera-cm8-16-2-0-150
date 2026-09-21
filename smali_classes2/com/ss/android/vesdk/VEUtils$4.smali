.class Lcom/ss/android/vesdk/VEUtils$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/ttve/nativePort/TEEffectUtils$ImageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/vesdk/VEUtils;->getQREncodedData(Ljava/lang/String;Lcom/ss/android/vesdk/VEListener$VEImageListener;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lcom/ss/android/vesdk/VEListener$VEImageListener;


# direct methods
.method constructor <init>(Lcom/ss/android/vesdk/VEListener$VEImageListener;)V
    .registers 2

    .line 1602
    iput-object p1, p0, Lcom/ss/android/vesdk/VEUtils$4;->val$listener:Lcom/ss/android/vesdk/VEListener$VEImageListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onData([IIII)V
    .registers 5

    .line 1606
    iget-object p0, p0, Lcom/ss/android/vesdk/VEUtils$4;->val$listener:Lcom/ss/android/vesdk/VEListener$VEImageListener;

    if-eqz p0, :cond_9

    .line 1607
    sget-object p4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/ss/android/vesdk/VEListener$VEImageListener;->onImage([IIILandroid/graphics/Bitmap$Config;)V

    :cond_9
    return-void
.end method
