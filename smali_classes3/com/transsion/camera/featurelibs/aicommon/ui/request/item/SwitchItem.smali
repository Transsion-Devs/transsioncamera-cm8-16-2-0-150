.class public Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/SwitchItem;
.super Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/BaseItem;
.source "SourceFile"


# instance fields
.field private mSwitchExpand:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v0, 0x5

    .line 19
    invoke-direct {p0, v0}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/BaseItem;-><init>(I)V

    const-wide/16 v0, -0x2

    .line 20
    iput-wide v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/BaseItem;->mId:J

    return-void
.end method


# virtual methods
.method public opposite()V
    .registers 2

    .line 32
    iget-boolean v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/SwitchItem;->mSwitchExpand:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/SwitchItem;->mSwitchExpand:Z

    return-void
.end method

.method public switchExpand(Z)V
    .registers 2

    .line 28
    iput-boolean p1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/SwitchItem;->mSwitchExpand:Z

    return-void
.end method

.method public switchExpand()Z
    .registers 1

    .line 24
    iget-boolean p0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/SwitchItem;->mSwitchExpand:Z

    return p0
.end method
