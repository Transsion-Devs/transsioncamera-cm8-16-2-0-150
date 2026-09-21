.class public interface abstract Lcom/transsion/camera/feature/mode/longexposure/capture/IStellarTrackListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/longexposure/capture/IStellarTrackListener$ICancelCallBack;
    }
.end annotation


# static fields
.field public static final STAR_ALGORITHM_ABNORMAL:I = 0x5

.field public static final STAR_SEARCHING:I = 0x1

.field public static final STAR_SEARCH_FAIL:I = 0x3

.field public static final STAR_SEARCH_NORMAL:I = 0x0

.field public static final STAR_SEARCH_SKY_SEGMENT_FAIL:I = 0x2

.field public static final STAR_SEARCH_SUCCESS:I = 0x4


# virtual methods
.method public abstract onStarSearched(I)V
.end method

.method public onStellarTrackCancel(Lcom/transsion/camera/feature/mode/longexposure/capture/IStellarTrackListener$ICancelCallBack;)V
    .registers 2

    return-void
.end method
