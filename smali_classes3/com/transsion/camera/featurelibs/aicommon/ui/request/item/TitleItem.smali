.class public Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/TitleItem;
.super Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/BaseItem;
.source "SourceFile"


# instance fields
.field private final mTitle:I


# direct methods
.method public constructor <init>(II)V
    .registers 5

    const/4 v0, 0x1

    .line 19
    invoke-direct {p0, v0}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/BaseItem;-><init>(I)V

    int-to-long v0, p1

    .line 20
    iput-wide v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/BaseItem;->mId:J

    .line 21
    iput p2, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/TitleItem;->mTitle:I

    return-void
.end method


# virtual methods
.method public getTitle()I
    .registers 1

    .line 25
    iget p0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/TitleItem;->mTitle:I

    return p0
.end method
