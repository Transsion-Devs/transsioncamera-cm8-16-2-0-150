.class public final synthetic Lcom/transsion/camera/app/proxy/ProxyManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 1

    .line 0
    new-instance p0, Lcom/transsion/camera/app/proxy/portrait/IPortraitProxy$DefaultImpl;

    invoke-direct {p0}, Lcom/transsion/camera/app/proxy/portrait/IPortraitProxy$DefaultImpl;-><init>()V

    return-object p0
.end method
