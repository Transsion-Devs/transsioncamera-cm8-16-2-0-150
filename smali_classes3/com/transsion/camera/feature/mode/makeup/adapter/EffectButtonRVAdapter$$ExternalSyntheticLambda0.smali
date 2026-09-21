.class public final synthetic Lcom/transsion/camera/feature/mode/makeup/adapter/EffectButtonRVAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/feature/mode/makeup/adapter/EffectButtonRVAdapter;

.field public final synthetic f$1:Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter$ViewHolder;

.field public final synthetic f$2:Z

.field public final synthetic f$3:Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/feature/mode/makeup/adapter/EffectButtonRVAdapter;Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter$ViewHolder;ZLcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;I)V
    .registers 6

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/EffectButtonRVAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/camera/feature/mode/makeup/adapter/EffectButtonRVAdapter;

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/EffectButtonRVAdapter$$ExternalSyntheticLambda0;->f$1:Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter$ViewHolder;

    iput-boolean p3, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/EffectButtonRVAdapter$$ExternalSyntheticLambda0;->f$2:Z

    iput-object p4, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/EffectButtonRVAdapter$$ExternalSyntheticLambda0;->f$3:Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    iput p5, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/EffectButtonRVAdapter$$ExternalSyntheticLambda0;->f$4:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 8

    .line 0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/EffectButtonRVAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/camera/feature/mode/makeup/adapter/EffectButtonRVAdapter;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/EffectButtonRVAdapter$$ExternalSyntheticLambda0;->f$1:Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter$ViewHolder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/EffectButtonRVAdapter$$ExternalSyntheticLambda0;->f$2:Z

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/EffectButtonRVAdapter$$ExternalSyntheticLambda0;->f$3:Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    iget v4, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/EffectButtonRVAdapter$$ExternalSyntheticLambda0;->f$4:I

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/transsion/camera/feature/mode/makeup/adapter/EffectButtonRVAdapter;->$r8$lambda$EQX1LthE1VMBsXac12LHU8CAmzE(Lcom/transsion/camera/feature/mode/makeup/adapter/EffectButtonRVAdapter;Lcom/transsion/camera/feature/mode/makeup/adapter/SelectItemRVAdapter$ViewHolder;ZLcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;ILandroid/view/View;)V

    return-void
.end method
