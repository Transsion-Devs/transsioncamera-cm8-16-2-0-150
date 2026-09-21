.class public interface abstract Lcom/ss/android/medialib/style/IStyleAudioProxyInterface;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final OP_PAUSE:I = 0x3

.field public static final OP_RESUME:I = 0x2

.field public static final OP_START:I = 0x0

.field public static final OP_STOP:I = 0x1


# virtual methods
.method public abstract addTrack(JILjava/lang/String;Z)V
.end method

.method public abstract enableBGM(JZ)V
.end method

.method public abstract enableStyleAudioEncode(JZ)V
.end method

.method public abstract getDuration(JI)D
.end method

.method public abstract init(II)J
.end method

.method public abstract makeCurrent(JZ)V
.end method

.method public abstract operatePlayer(JI)V
.end method

.method public abstract release(J)V
.end method

.method public abstract removeAllTrack(J)V
.end method

.method public abstract removeTrack(JI)V
.end method

.method public abstract restore(JLjava/lang/String;)V
.end method

.method public abstract setLoopCount(JII)V
.end method

.method public abstract setMute(JZI)V
.end method

.method public abstract setVolume(JDI)V
.end method
