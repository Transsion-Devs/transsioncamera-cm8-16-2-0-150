.class Lcom/ss/android/vesdk/VEUtils$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/ttve/nativePort/TEEffectUtils$QrImageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/vesdk/VEUtils;->getQREncodedData(Ljava/lang/String;IILcom/ss/android/vesdk/VEListener$VEQrImageListener;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lcom/ss/android/vesdk/VEListener$VEQrImageListener;


# direct methods
.method constructor <init>(Lcom/ss/android/vesdk/VEListener$VEQrImageListener;)V
    .registers 2

    .line 1622
    iput-object p1, p0, Lcom/ss/android/vesdk/VEUtils$5;->val$listener:Lcom/ss/android/vesdk/VEListener$VEQrImageListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onData([IIII)V
    .registers 5

    .line 1625
    iget-object p0, p0, Lcom/ss/android/vesdk/VEUtils$5;->val$listener:Lcom/ss/android/vesdk/VEListener$VEQrImageListener;

    if-eqz p0, :cond_7

    .line 1626
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/ss/android/vesdk/VEListener$VEQrImageListener;->onImage([IIII)V

    :cond_7
    return-void
.end method
