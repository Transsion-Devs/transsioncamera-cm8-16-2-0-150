.class public Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeItemAnimator;
.super Landroidx/recyclerview/widget/DefaultItemAnimator;
.source "SourceFile"


# instance fields
.field private final mNeedReuseViewHolder:Z


# direct methods
.method public constructor <init>(Z)V
    .registers 2

    .line 12
    invoke-direct {p0}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    .line 13
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeItemAnimator;->mNeedReuseViewHolder:Z

    return-void
.end method


# virtual methods
.method public canReuseUpdatedViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .registers 2

    .line 18
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/FreeItemAnimator;->mNeedReuseViewHolder:Z

    return p0
.end method
