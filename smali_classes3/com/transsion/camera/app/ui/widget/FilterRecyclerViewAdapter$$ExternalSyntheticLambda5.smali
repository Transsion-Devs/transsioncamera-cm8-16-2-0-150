.class public final synthetic Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;

.field public final synthetic f$1:Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemHolder;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemHolder;I)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$$ExternalSyntheticLambda5;->f$0:Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$$ExternalSyntheticLambda5;->f$1:Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemHolder;

    iput p3, p0, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$$ExternalSyntheticLambda5;->f$2:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$$ExternalSyntheticLambda5;->f$0:Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$$ExternalSyntheticLambda5;->f$1:Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemHolder;

    iget p0, p0, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$$ExternalSyntheticLambda5;->f$2:I

    check-cast p1, Ljava/lang/Integer;

    invoke-static {v0, v1, p0, p1}, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;->$r8$lambda$c0sdoXiHN1a4wyhYCyygGbGr2oY(Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemHolder;ILjava/lang/Integer;)V

    return-void
.end method
