.class public final synthetic Lcom/bytedance/ies/cutsame/util/VEUtils$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/vesdk/VEFrameAvailableListener;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/functions/Function4;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function4;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/ies/cutsame/util/VEUtils$$ExternalSyntheticLambda2;->f$0:Lkotlin/jvm/functions/Function4;

    return-void
.end method


# virtual methods
.method public final processFrame(Ljava/nio/ByteBuffer;III)Z
    .registers 5

    .line 0
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/util/VEUtils$$ExternalSyntheticLambda2;->f$0:Lkotlin/jvm/functions/Function4;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/bytedance/ies/cutsame/util/VEUtils;->$r8$lambda$bLfwQxy2aIB8_ZJ1cfnuuse9Mx8(Lkotlin/jvm/functions/Function4;Ljava/nio/ByteBuffer;III)Z

    move-result p0

    return p0
.end method
