.class public interface abstract Lcom/transsion/camera/feature/setting/googlelens/IGoogleLensApi;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/setting/googlelens/IGoogleLensApi$LensStatus;
    }
.end annotation


# static fields
.field public static final LENS_AVAILABLE:I = 0x0

.field public static final LENS_UNAVAILABLE:I = 0x1


# virtual methods
.method public abstract checkLensStatus()I
.end method

.method public abstract startLens(Landroid/app/Activity;)V
.end method
