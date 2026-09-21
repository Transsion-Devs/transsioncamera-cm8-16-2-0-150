.class public Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ItemInfo"
.end annotation


# instance fields
.field private final mDrawableRes:I

.field private final mFilterId:Ljava/lang/String;

.field private final mTitleRes:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .registers 4

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;->mFilterId:Ljava/lang/String;

    .line 70
    iput p2, p0, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;->mDrawableRes:I

    .line 71
    iput p3, p0, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;->mTitleRes:I

    return-void
.end method


# virtual methods
.method public getDrawableRes()I
    .registers 1

    .line 75
    iget p0, p0, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;->mDrawableRes:I

    return p0
.end method

.method public getFilterId()Ljava/lang/String;
    .registers 1

    .line 79
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;->mFilterId:Ljava/lang/String;

    return-object p0
.end method

.method public getTitleRes()I
    .registers 1

    .line 83
    iget p0, p0, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;->mTitleRes:I

    return p0
.end method
