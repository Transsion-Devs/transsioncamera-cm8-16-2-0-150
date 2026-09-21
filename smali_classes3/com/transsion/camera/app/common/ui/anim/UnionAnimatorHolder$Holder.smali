.class abstract Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$Holder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder;


# direct methods
.method static bridge synthetic -$$Nest$sfgetINSTANCE()Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$Holder;->INSTANCE:Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 82
    new-instance v0, Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder;-><init>()V

    sput-object v0, Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$Holder;->INSTANCE:Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder;

    return-void
.end method
