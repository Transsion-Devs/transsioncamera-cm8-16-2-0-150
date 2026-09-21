.class public final synthetic Lcom/transsion/camera/app/ui/anim/AnimationManager$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/app/ui/anim/AnimationManager;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/app/ui/anim/AnimationManager;II)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager$$ExternalSyntheticLambda6;->f$0:Lcom/transsion/camera/app/ui/anim/AnimationManager;

    iput p2, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager$$ExternalSyntheticLambda6;->f$1:I

    iput p3, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager$$ExternalSyntheticLambda6;->f$2:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager$$ExternalSyntheticLambda6;->f$0:Lcom/transsion/camera/app/ui/anim/AnimationManager;

    iget v1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager$$ExternalSyntheticLambda6;->f$1:I

    iget p0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager$$ExternalSyntheticLambda6;->f$2:I

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, v1, p0, p1}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->$r8$lambda$4AMWiPdc4AFLji2JU_ECEiX9u94(Lcom/transsion/camera/app/ui/anim/AnimationManager;IILjava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
