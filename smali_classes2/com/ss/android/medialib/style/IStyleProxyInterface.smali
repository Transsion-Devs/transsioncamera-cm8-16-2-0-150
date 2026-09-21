.class public interface abstract Lcom/ss/android/medialib/style/IStyleProxyInterface;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final OP_MANAGER_TYPE_COPY_FEATURE:I = 0x3ed

.field public static final OP_MANAGER_TYPE_CREATE_FEATURE:I = 0x3ec

.field public static final OP_MANAGER_TYPE_EXPORT:I = 0x3ea

.field public static final OP_MANAGER_TYPE_LOAD:I = 0x3e8

.field public static final OP_MANAGER_TYPE_SAVE:I = 0x3e9

.field public static final OP_MANAGER_TYPE_SET_BUILT_IN_SOURCE_PATH:I = 0x3ef

.field public static final OP_MANAGER_TYPE_SET_FEATURE_ROOT_PATH:I = 0x3eb

.field public static final OP_MANAGER_TYPE_SET_SAVE_PATH:I = 0x3ee

.field public static final OP_MANAGER_TYPE_SET_TEXT_PLACEHOLDER:I = 0x3f0

.field public static final RECT_OK:I = 0x0

.field public static final RECT_RENDER_ENV_ERR:I = -0x3

.field public static final RECT_RENDER_PO_ERR:I = -0x1


# virtual methods
.method public abstract createEngine(IIILcom/ss/android/medialib/style/StyleActionListener;)J
.end method

.method public abstract createManager(JLcom/ss/android/medialib/style/StyleActionListener;)J
.end method

.method public abstract drawToBitmap(JJLandroid/graphics/Bitmap;Lcom/ss/android/medialib/style/StyleActionListener;)I
.end method

.method public abstract flushData(J)J
.end method

.method public abstract getEvents(J)Ljava/lang/String;
.end method

.method public abstract getFeatureParam(JJIZ)Ljava/lang/String;
.end method

.method public abstract getFeatureRotation(JJI)F
.end method

.method public abstract getFeatures(J)[J
.end method

.method public abstract getRenderRect(J)Ljava/lang/String;
.end method

.method public abstract getStickerVersion(J)Ljava/lang/String;
.end method

.method public abstract operateFeature(JJILjava/lang/String;ZZLcom/ss/android/medialib/style/StyleActionListener;)J
.end method

.method public abstract operateFeatureGroup(J[J[I[Ljava/lang/String;ZZ)[Ljava/lang/String;
.end method

.method public abstract operateManager(JIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/ss/android/medialib/style/StyleActionListener;)J
.end method

.method public abstract refreshEvent(J)I
.end method

.method public abstract registerPathsConverter(JLcom/ss/android/medialib/style/StylePathConvertCallback;)V
.end method

.method public abstract releaseEngine(JZLcom/ss/android/medialib/style/StyleActionListener;)J
.end method

.method public abstract releaseManager(JZLcom/ss/android/medialib/style/StyleActionListener;)J
.end method

.method public abstract renderEnable(JZ)J
.end method

.method public abstract seek(JJ)J
.end method

.method public abstract setEventEnable(JZ)I
.end method

.method public abstract setEvents(JLjava/lang/String;)J
.end method

.method public abstract setPictureOffset(JFFFF)I
.end method

.method public abstract updateEvents(JLjava/lang/String;)J
.end method
