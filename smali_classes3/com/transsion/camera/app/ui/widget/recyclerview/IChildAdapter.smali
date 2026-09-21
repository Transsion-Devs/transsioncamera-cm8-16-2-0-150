.class public interface abstract Lcom/transsion/camera/app/ui/widget/recyclerview/IChildAdapter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/widget/recyclerview/IChildAdapter$ItemStyle;
    }
.end annotation


# virtual methods
.method public abstract getChildItemPosition(Ljava/lang/Object;)I
.end method

.method public abstract getChildItemViewType()I
.end method

.method public abstract getChildItems()Ljava/util/List;
.end method

.method public abstract isChildMatch(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
.end method

.method public abstract isChildMatch(Ljava/lang/Object;)Z
.end method

.method public abstract onBindChildViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end method

.method public abstract onCreateChildViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.end method

.method public abstract setChildItemViewType(I)V
.end method

.method public abstract updateChildItemStyle(Lcom/transsion/camera/app/ui/widget/recyclerview/IChildAdapter$ItemStyle;)V
.end method
