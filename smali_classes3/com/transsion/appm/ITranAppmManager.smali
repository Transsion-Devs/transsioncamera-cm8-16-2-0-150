.class public interface abstract Lcom/transsion/appm/ITranAppmManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/appm/ITranAppmManager$Stub;
    }
.end annotation


# virtual methods
.method public abstract getPolicyVersion(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract notifyClient(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract registerAppmCallback(Lcom/transsion/appm/ITranAppmCallback;)V
.end method

.method public abstract sendEvent(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract unregisterAppmCallback(Lcom/transsion/appm/ITranAppmCallback;)V
.end method
