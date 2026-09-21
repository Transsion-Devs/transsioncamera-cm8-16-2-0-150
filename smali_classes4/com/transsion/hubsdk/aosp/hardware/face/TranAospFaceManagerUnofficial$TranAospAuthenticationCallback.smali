.class public interface abstract Lcom/transsion/hubsdk/aosp/hardware/face/TranAospFaceManagerUnofficial$TranAospAuthenticationCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/aosp/hardware/face/TranAospFaceManagerUnofficial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TranAospAuthenticationCallback"
.end annotation


# virtual methods
.method public abstract onAuthenticationAcquired(I)V
.end method

.method public abstract onAuthenticationError(ILjava/lang/CharSequence;)V
.end method

.method public abstract onAuthenticationFailed()V
.end method

.method public abstract onAuthenticationHelp(ILjava/lang/CharSequence;)V
.end method

.method public abstract onAuthenticationSucceeded(Ljava/lang/String;)V
.end method
