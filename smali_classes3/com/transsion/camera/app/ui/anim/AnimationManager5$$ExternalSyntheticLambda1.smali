.class public final synthetic Lcom/transsion/camera/app/ui/anim/AnimationManager5$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/app/ui/anim/AnimationManager5;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/app/ui/anim/AnimationManager5;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager5$$ExternalSyntheticLambda1;->f$0:Lcom/transsion/camera/app/ui/anim/AnimationManager5;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager5$$ExternalSyntheticLambda1;->f$0:Lcom/transsion/camera/app/ui/anim/AnimationManager5;

    check-cast p1, Ljava/util/function/ToIntFunction;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/ui/anim/AnimationManager5;->$r8$lambda$7JRC4r5twBFFambOfD6-mz6lIcE(Lcom/transsion/camera/app/ui/anim/AnimationManager5;Ljava/util/function/ToIntFunction;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
