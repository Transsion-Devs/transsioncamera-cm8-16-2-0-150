.class public Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/HeaderItem;
.super Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/BaseItem;
.source "SourceFile"


# instance fields
.field private mLimited:I


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v0, 0x0

    .line 19
    invoke-direct {p0, v0}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/BaseItem;-><init>(I)V

    const-wide/16 v0, -0x1

    .line 20
    iput-wide v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/BaseItem;->mId:J

    return-void
.end method


# virtual methods
.method public getLimited()I
    .registers 1

    .line 28
    iget p0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/HeaderItem;->mLimited:I

    return p0
.end method

.method public setLimited(I)V
    .registers 2

    .line 24
    iput p1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/HeaderItem;->mLimited:I

    return-void
.end method
