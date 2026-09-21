.class public Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment$SoundEffectAdapter$SoundEffectViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment$SoundEffectAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SoundEffectViewHolder"
.end annotation


# instance fields
.field public checkedTextView:Landroid/widget/CheckedTextView;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment$SoundEffectAdapter;Landroid/view/View;)V
    .registers 3

    .line 257
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 258
    sget p1, Lcom/transsion/camera/R$id;->shutter_sound_item_ctv:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckedTextView;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment$SoundEffectAdapter$SoundEffectViewHolder;->checkedTextView:Landroid/widget/CheckedTextView;

    return-void
.end method
