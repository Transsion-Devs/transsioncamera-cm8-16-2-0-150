.class public interface abstract Lcom/transsion/hubsdk/api/app/ITranActivityController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/hubsdk/api/app/ITranActivityController$Stub;,
        Lcom/transsion/hubsdk/api/app/ITranActivityController$Default;
    }
.end annotation


# virtual methods
.method public abstract activityResuming(Ljava/lang/String;)Z
.end method

.method public abstract activityStarting(Landroid/content/Intent;Ljava/lang/String;)Z
.end method

.method public abstract appCrashed(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;)Z
.end method

.method public abstract appEarlyNotResponding(Ljava/lang/String;ILjava/lang/String;)I
.end method

.method public abstract appNotResponding(Ljava/lang/String;ILjava/lang/String;)I
.end method

.method public abstract systemNotResponding(Ljava/lang/String;)I
.end method
