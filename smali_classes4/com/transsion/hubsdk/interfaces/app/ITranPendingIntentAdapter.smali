.class public interface abstract Lcom/transsion/hubsdk/interfaces/app/ITranPendingIntentAdapter;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;
.end method

.method public abstract getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;
.end method

.method public abstract getIntent(Landroid/app/PendingIntent;)Landroid/content/Intent;
.end method
