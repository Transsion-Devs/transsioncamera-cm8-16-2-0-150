.class public Lcom/transsion/camera/ui/setting/videoportraitspot/bean/VideoPortraitSpotItemBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final mItemImage:I

.field public final mItemName:Ljava/lang/String;

.field public final mItemTextName:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .registers 4

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/bean/VideoPortraitSpotItemBean;->mItemName:Ljava/lang/String;

    .line 11
    iput p2, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/bean/VideoPortraitSpotItemBean;->mItemImage:I

    .line 12
    iput p3, p0, Lcom/transsion/camera/ui/setting/videoportraitspot/bean/VideoPortraitSpotItemBean;->mItemTextName:I

    return-void
.end method
