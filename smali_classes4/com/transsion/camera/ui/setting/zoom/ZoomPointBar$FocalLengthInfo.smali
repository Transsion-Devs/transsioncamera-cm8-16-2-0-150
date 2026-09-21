.class Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$FocalLengthInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FocalLengthInfo"
.end annotation


# instance fields
.field mFocalLength:Ljava/lang/String;

.field mZoomRatio:I


# direct methods
.method public constructor <init>(Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar;Ljava/lang/String;I)V
    .registers 4

    .line 755
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 756
    iput-object p2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$FocalLengthInfo;->mFocalLength:Ljava/lang/String;

    .line 757
    iput p3, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomPointBar$FocalLengthInfo;->mZoomRatio:I

    return-void
.end method
