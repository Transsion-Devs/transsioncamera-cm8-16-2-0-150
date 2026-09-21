.class public abstract Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/BaseItem;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected mId:J

.field private final mType:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput p1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/BaseItem;->mType:I

    return-void
.end method


# virtual methods
.method public getId()J
    .registers 3

    .line 45
    iget-wide v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/BaseItem;->mId:J

    return-wide v0
.end method

.method public getType()I
    .registers 1

    .line 41
    iget p0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/BaseItem;->mType:I

    return p0
.end method
