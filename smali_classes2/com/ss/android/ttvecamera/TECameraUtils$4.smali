.class Lcom/ss/android/ttvecamera/TECameraUtils$4;
.super Lcom/ss/android/ttvecamera/TECameraUtils$ClosestComparator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/ttvecamera/TECameraUtils;->getClosestSupportedSize(Ljava/util/List;Lcom/ss/android/ttvecamera/TEFrameSizei;)Lcom/ss/android/ttvecamera/TEFrameSizei;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ss/android/ttvecamera/TECameraUtils$ClosestComparator<",
        "Lcom/ss/android/ttvecamera/TEFrameSizei;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$requestedSize:Lcom/ss/android/ttvecamera/TEFrameSizei;


# direct methods
.method constructor <init>(Lcom/ss/android/ttvecamera/TEFrameSizei;)V
    .registers 2

    .line 331
    iput-object p1, p0, Lcom/ss/android/ttvecamera/TECameraUtils$4;->val$requestedSize:Lcom/ss/android/ttvecamera/TEFrameSizei;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/ss/android/ttvecamera/TECameraUtils$ClosestComparator;-><init>(Lcom/ss/android/ttvecamera/TECameraUtils$1;)V

    return-void
.end method


# virtual methods
.method diff(Lcom/ss/android/ttvecamera/TEFrameSizei;)I
    .registers 4

    .line 334
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraUtils$4;->val$requestedSize:Lcom/ss/android/ttvecamera/TEFrameSizei;

    iget v0, v0, Lcom/ss/android/ttvecamera/TEFrameSizei;->width:I

    iget v1, p1, Lcom/ss/android/ttvecamera/TEFrameSizei;->width:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraUtils$4;->val$requestedSize:Lcom/ss/android/ttvecamera/TEFrameSizei;

    iget p0, p0, Lcom/ss/android/ttvecamera/TEFrameSizei;->height:I

    iget p1, p1, Lcom/ss/android/ttvecamera/TEFrameSizei;->height:I

    sub-int/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method bridge synthetic diff(Ljava/lang/Object;)I
    .registers 2

    .line 331
    check-cast p1, Lcom/ss/android/ttvecamera/TEFrameSizei;

    invoke-virtual {p0, p1}, Lcom/ss/android/ttvecamera/TECameraUtils$4;->diff(Lcom/ss/android/ttvecamera/TEFrameSizei;)I

    move-result p0

    return p0
.end method
